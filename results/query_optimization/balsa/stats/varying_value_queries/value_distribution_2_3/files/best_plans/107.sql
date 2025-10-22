/*+ MergeJoin(v b u p)
 HashJoin(b u p)
 NestLoop(u p)
 IndexScan(v)
 SeqScan(b)
 SeqScan(u)
 IndexScan(p)
 Leading((v (b (u p)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>36 AND p.Score<147 AND p.CommentCount>6 AND p.CommentCount<22 AND u.DownVotes>187 AND u.DownVotes<1255 AND v.CreationDate>'2009-10-12 14:34:35'::timestamp AND v.CreationDate<'2013-08-31 11:51:24'::timestamp AND v.VoteTypeId>5 AND v.VoteTypeId<13 AND b.Date>'2013-06-16 17:06:08'::timestamp AND b.Date<'2014-05-04 17:04:51'::timestamp;

