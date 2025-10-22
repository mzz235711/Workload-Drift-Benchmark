/*+ NestLoop(v p u b)
 NestLoop(v p u)
 NestLoop(v p)
 SeqScan(v)
 IndexScan(p)
 IndexScan(u)
 IndexScan(b)
 Leading((((v p) u) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>1 AND p.Score<90 AND p.CommentCount>11 AND p.CommentCount<32 AND u.DownVotes>184 AND u.DownVotes<1274 AND v.CreationDate>'2010-03-14 17:31:21'::timestamp AND v.CreationDate<'2012-08-06 13:17:58'::timestamp AND v.VoteTypeId>5 AND v.VoteTypeId<11 AND b.Date>'2012-12-29 06:28:23'::timestamp AND b.Date<'2014-08-09 22:52:08'::timestamp;

