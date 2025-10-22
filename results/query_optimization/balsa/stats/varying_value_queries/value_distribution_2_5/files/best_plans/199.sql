/*+ NestLoop(v p u b)
 NestLoop(v p u)
 NestLoop(v p)
 SeqScan(v)
 IndexScan(p)
 IndexScan(u)
 IndexScan(b)
 Leading((((v p) u) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>33 AND p.Score<159 AND p.CommentCount>7 AND p.CommentCount<30 AND u.DownVotes>362 AND u.DownVotes<1708 AND v.CreationDate>'2011-11-01 21:18:44'::timestamp AND v.CreationDate<'2012-04-24 11:11:36'::timestamp AND v.VoteTypeId>2 AND v.VoteTypeId<11 AND b.Date>'2011-03-03 03:56:45'::timestamp AND b.Date<'2011-04-28 04:56:26'::timestamp;

