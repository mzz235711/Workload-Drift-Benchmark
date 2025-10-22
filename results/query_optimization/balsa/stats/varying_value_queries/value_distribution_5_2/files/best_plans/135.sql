/*+ NestLoop(u p b v)
 NestLoop(u p b)
 NestLoop(u p)
 SeqScan(u)
 IndexScan(p)
 IndexScan(b)
 IndexScan(v)
 Leading((((u p) b) v)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>4 AND p.Score<36 AND p.CommentCount>10 AND p.CommentCount<34 AND u.DownVotes>93 AND u.DownVotes<1435 AND v.CreationDate>'2009-10-29 10:57:14'::timestamp AND v.CreationDate<'2011-11-14 15:53:51'::timestamp AND v.VoteTypeId>5 AND v.VoteTypeId<12 AND b.Date>'2011-10-09 11:41:08'::timestamp AND b.Date<'2012-06-08 10:16:34'::timestamp;

