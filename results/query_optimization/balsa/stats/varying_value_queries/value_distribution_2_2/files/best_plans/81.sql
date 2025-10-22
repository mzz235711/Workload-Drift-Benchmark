/*+ NestLoop(u p v b)
 NestLoop(u p v)
 NestLoop(u p)
 SeqScan(u)
 IndexScan(p)
 IndexScan(v)
 IndexScan(b)
 Leading((((u p) v) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-1 AND p.Score<170 AND p.CommentCount>19 AND p.CommentCount<28 AND u.DownVotes>699 AND u.DownVotes<1023 AND v.CreationDate>'2009-08-15 04:29:22'::timestamp AND v.CreationDate<'2013-12-04 10:01:56'::timestamp AND v.VoteTypeId>3 AND v.VoteTypeId<15 AND b.Date>'2012-01-06 15:09:22'::timestamp AND b.Date<'2012-01-22 20:35:47'::timestamp;

