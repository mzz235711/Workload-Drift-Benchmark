/*+ NestLoop(v p u b)
 NestLoop(v p u)
 NestLoop(v p)
 SeqScan(v)
 IndexScan(p)
 IndexScan(u)
 IndexScan(b)
 Leading((((v p) u) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>5 AND p.Score<162 AND p.CommentCount>9 AND p.CommentCount<15 AND u.DownVotes>56 AND u.DownVotes<748 AND v.CreationDate>'2013-04-15 17:34:04'::timestamp AND v.CreationDate<'2014-08-08 17:29:50'::timestamp AND v.VoteTypeId>5 AND v.VoteTypeId<11 AND b.Date>'2012-04-24 19:26:23'::timestamp AND b.Date<'2012-08-29 15:04:30'::timestamp;

