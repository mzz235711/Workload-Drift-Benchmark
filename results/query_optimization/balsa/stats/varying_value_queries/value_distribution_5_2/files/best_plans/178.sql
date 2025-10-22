/*+ NestLoop(u b p v)
 NestLoop(u b p)
 NestLoop(u b)
 IndexScan(u)
 IndexScan(b)
 IndexScan(p)
 IndexScan(v)
 Leading((((u b) p) v)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-2 AND p.Score<94 AND p.CommentCount>9 AND p.CommentCount<21 AND u.DownVotes>282 AND u.DownVotes<1857 AND v.CreationDate>'2011-03-14 03:19:35'::timestamp AND v.CreationDate<'2011-09-15 02:03:23'::timestamp AND v.VoteTypeId>7 AND v.VoteTypeId<13 AND b.Date>'2011-11-01 05:26:21'::timestamp AND b.Date<'2011-11-21 13:38:50'::timestamp;

