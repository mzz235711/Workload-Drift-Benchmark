/*+ NestLoop(u p b v)
 NestLoop(u p b)
 NestLoop(u p)
 SeqScan(u)
 IndexScan(p)
 IndexScan(b)
 IndexScan(v)
 Leading((((u p) b) v)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>18 AND p.Score<121 AND p.CommentCount>4 AND p.CommentCount<10 AND u.DownVotes>545 AND u.DownVotes<1844 AND v.CreationDate>'2012-09-07 20:24:22'::timestamp AND v.CreationDate<'2014-07-10 14:51:54'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<4 AND b.Date>'2012-10-06 06:35:58'::timestamp AND b.Date<'2013-02-27 15:30:53'::timestamp;

