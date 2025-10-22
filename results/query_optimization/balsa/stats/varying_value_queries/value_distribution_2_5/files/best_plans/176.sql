/*+ NestLoop(u b p v)
 NestLoop(u b p)
 NestLoop(u b)
 IndexScan(u)
 IndexScan(b)
 IndexScan(p)
 IndexScan(v)
 Leading((((u b) p) v)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-15 AND p.Score<38 AND p.CommentCount>10 AND p.CommentCount<23 AND u.DownVotes>339 AND u.DownVotes<1414 AND v.CreationDate>'2009-03-04 14:48:59'::timestamp AND v.CreationDate<'2013-11-29 09:34:42'::timestamp AND v.VoteTypeId>6 AND v.VoteTypeId<10 AND b.Date>'2013-01-15 21:17:20'::timestamp AND b.Date<'2013-04-24 11:27:55'::timestamp;

