/*+ NestLoop(u p v b)
 NestLoop(u p v)
 NestLoop(u p)
 SeqScan(u)
 IndexScan(p)
 IndexScan(v)
 IndexScan(b)
 Leading((((u p) v) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>0 AND p.Score<96 AND p.CommentCount>15 AND p.CommentCount<22 AND u.DownVotes>394 AND u.DownVotes<1138 AND v.CreationDate>'2009-07-15 04:33:19'::timestamp AND v.CreationDate<'2012-03-13 15:59:00'::timestamp AND v.VoteTypeId>8 AND v.VoteTypeId<12 AND b.Date>'2010-08-11 05:04:08'::timestamp AND b.Date<'2010-10-29 20:59:59'::timestamp;

