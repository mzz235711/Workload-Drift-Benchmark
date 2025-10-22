/*+ NestLoop(v p u b)
 NestLoop(v p u)
 NestLoop(v p)
 SeqScan(v)
 IndexScan(p)
 IndexScan(u)
 IndexScan(b)
 Leading((((v p) u) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>8 AND p.Score<13 AND p.CommentCount>12 AND p.CommentCount<22 AND u.DownVotes>53 AND u.DownVotes<1339 AND v.CreationDate>'2010-08-15 21:42:32'::timestamp AND v.CreationDate<'2012-11-23 18:03:09'::timestamp AND v.VoteTypeId>2 AND v.VoteTypeId<15 AND b.Date>'2012-04-14 06:46:31'::timestamp AND b.Date<'2012-04-29 12:39:07'::timestamp;

