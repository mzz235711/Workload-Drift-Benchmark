/*+ NestLoop(u p v b)
 NestLoop(u p v)
 NestLoop(u p)
 SeqScan(u)
 IndexScan(p)
 IndexScan(v)
 IndexScan(b)
 Leading((((u p) v) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>8 AND p.Score<147 AND p.CommentCount>12 AND p.CommentCount<42 AND u.DownVotes>198 AND u.DownVotes<1462 AND v.CreationDate>'2009-02-04 06:05:15'::timestamp AND v.CreationDate<'2014-08-15 22:36:53'::timestamp AND v.VoteTypeId>7 AND v.VoteTypeId<11 AND b.Date>'2011-12-18 01:06:54'::timestamp AND b.Date<'2012-06-01 08:24:29'::timestamp;

