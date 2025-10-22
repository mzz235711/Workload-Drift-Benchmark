/*+ NestLoop(v p u b)
 NestLoop(v p u)
 NestLoop(v p)
 SeqScan(v)
 IndexScan(p)
 IndexScan(u)
 IndexScan(b)
 Leading((((v p) u) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>17 AND p.Score<140 AND p.CommentCount>8 AND p.CommentCount<24 AND u.DownVotes>90 AND u.DownVotes<1523 AND v.CreationDate>'2012-08-23 14:13:58'::timestamp AND v.CreationDate<'2012-10-25 14:18:24'::timestamp AND v.VoteTypeId>2 AND v.VoteTypeId<7 AND b.Date>'2012-09-30 00:43:05'::timestamp AND b.Date<'2014-03-17 19:39:30'::timestamp;

