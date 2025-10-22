/*+ NestLoop(v p u b)
 NestLoop(v p u)
 NestLoop(v p)
 SeqScan(v)
 IndexScan(p)
 IndexScan(u)
 IndexScan(b)
 Leading((((v p) u) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>5 AND p.Score<151 AND p.CommentCount>7 AND p.CommentCount<33 AND u.DownVotes>162 AND u.DownVotes<795 AND v.CreationDate>'2012-04-21 08:36:18'::timestamp AND v.CreationDate<'2013-12-30 00:25:36'::timestamp AND v.VoteTypeId>5 AND v.VoteTypeId<15 AND b.Date>'2012-05-18 18:20:21'::timestamp AND b.Date<'2013-07-29 11:30:37'::timestamp;

