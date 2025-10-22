/*+ NestLoop(u p v b)
 NestLoop(u p v)
 NestLoop(u p)
 SeqScan(u)
 IndexScan(p)
 IndexScan(v)
 IndexScan(b)
 Leading((((u p) v) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-7 AND p.Score<117 AND p.CommentCount>2 AND p.CommentCount<9 AND u.DownVotes>255 AND u.DownVotes<1217 AND v.CreationDate>'2009-12-01 03:18:08'::timestamp AND v.CreationDate<'2013-09-29 21:22:39'::timestamp AND v.VoteTypeId>5 AND v.VoteTypeId<12 AND b.Date>'2012-01-15 12:50:29'::timestamp AND b.Date<'2012-07-19 17:14:37'::timestamp;

