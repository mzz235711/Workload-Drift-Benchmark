/*+ NestLoop(u p b v)
 NestLoop(u p b)
 NestLoop(u p)
 SeqScan(u)
 IndexScan(p)
 IndexScan(b)
 IndexScan(v)
 Leading((((u p) b) v)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-10 AND p.Score<112 AND p.CommentCount>17 AND p.CommentCount<39 AND u.DownVotes>701 AND u.DownVotes<1302 AND v.CreationDate>'2012-12-18 11:55:41'::timestamp AND v.CreationDate<'2014-08-31 18:05:48'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<3 AND b.Date>'2013-05-10 19:10:01'::timestamp AND b.Date<'2013-07-11 02:54:08'::timestamp;

