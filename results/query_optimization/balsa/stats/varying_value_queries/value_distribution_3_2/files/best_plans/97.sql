/*+ NestLoop(u p v b)
 NestLoop(u p v)
 NestLoop(u p)
 SeqScan(u)
 IndexScan(p)
 IndexScan(v)
 IndexScan(b)
 Leading((((u p) v) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-6 AND p.Score<179 AND p.CommentCount>1 AND p.CommentCount<33 AND u.DownVotes>552 AND u.DownVotes<810 AND v.CreationDate>'2009-03-16 08:22:24'::timestamp AND v.CreationDate<'2010-09-27 21:08:32'::timestamp AND v.VoteTypeId>3 AND v.VoteTypeId<11 AND b.Date>'2012-10-08 16:59:05'::timestamp AND b.Date<'2013-10-05 15:38:50'::timestamp;

