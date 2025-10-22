/*+ NestLoop(v p u b)
 NestLoop(v p u)
 MergeJoin(v p)
 SeqScan(v)
 SeqScan(p)
 IndexScan(u)
 IndexScan(b)
 Leading((((v p) u) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>8 AND p.Score<95 AND p.CommentCount>12 AND p.CommentCount<22 AND u.DownVotes>323 AND u.DownVotes<1161 AND v.CreationDate>'2010-09-11 10:26:48'::timestamp AND v.CreationDate<'2014-08-03 17:09:47'::timestamp AND v.VoteTypeId>2 AND v.VoteTypeId<14 AND b.Date>'2010-12-16 22:49:25'::timestamp AND b.Date<'2013-05-04 17:22:58'::timestamp;

