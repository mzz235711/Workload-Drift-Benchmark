/*+ NestLoop(v p u b)
 NestLoop(v p u)
 NestLoop(v p)
 SeqScan(v)
 IndexScan(p)
 IndexScan(u)
 IndexScan(b)
 Leading((((v p) u) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>41 AND p.Score<87 AND p.CommentCount>3 AND p.CommentCount<31 AND u.DownVotes>165 AND u.DownVotes<1264 AND v.CreationDate>'2009-06-27 13:20:17'::timestamp AND v.CreationDate<'2014-04-19 09:55:39'::timestamp AND v.VoteTypeId>7 AND v.VoteTypeId<15 AND b.Date>'2011-08-09 04:45:56'::timestamp AND b.Date<'2012-07-03 23:25:44'::timestamp;

