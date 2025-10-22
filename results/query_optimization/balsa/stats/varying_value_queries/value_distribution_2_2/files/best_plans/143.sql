/*+ NestLoop(u p v b)
 NestLoop(u p v)
 NestLoop(u p)
 SeqScan(u)
 IndexScan(p)
 IndexScan(v)
 IndexScan(b)
 Leading((((u p) v) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>17 AND p.Score<116 AND p.CommentCount>0 AND p.CommentCount<32 AND u.DownVotes>500 AND u.DownVotes<1404 AND v.CreationDate>'2013-01-26 03:56:55'::timestamp AND v.CreationDate<'2014-07-19 10:32:08'::timestamp AND v.VoteTypeId>7 AND v.VoteTypeId<13 AND b.Date>'2011-12-16 19:11:27'::timestamp AND b.Date<'2012-08-01 18:42:50'::timestamp;

