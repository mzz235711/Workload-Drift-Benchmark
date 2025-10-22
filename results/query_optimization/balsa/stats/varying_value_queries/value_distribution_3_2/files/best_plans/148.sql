/*+ NestLoop(u p v b)
 NestLoop(u p v)
 NestLoop(u p)
 SeqScan(u)
 IndexScan(p)
 IndexScan(v)
 IndexScan(b)
 Leading((((u p) v) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>5 AND p.Score<22 AND p.CommentCount>6 AND p.CommentCount<33 AND u.DownVotes>653 AND u.DownVotes<1111 AND v.CreationDate>'2009-07-17 21:45:00'::timestamp AND v.CreationDate<'2011-10-22 20:23:41'::timestamp AND v.VoteTypeId>4 AND v.VoteTypeId<9 AND b.Date>'2013-07-06 19:46:02'::timestamp AND b.Date<'2014-06-29 16:38:39'::timestamp;

