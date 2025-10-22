/*+ NestLoop(v p u b)
 NestLoop(v p u)
 NestLoop(v p)
 SeqScan(v)
 IndexScan(p)
 IndexScan(u)
 IndexScan(b)
 Leading((((v p) u) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>6 AND p.Score<17 AND p.CommentCount>2 AND p.CommentCount<21 AND u.DownVotes>362 AND u.DownVotes<1894 AND v.CreationDate>'2010-11-26 22:55:11'::timestamp AND v.CreationDate<'2011-10-17 17:46:45'::timestamp AND v.VoteTypeId>7 AND v.VoteTypeId<11 AND b.Date>'2011-04-04 08:35:13'::timestamp AND b.Date<'2011-08-31 10:19:13'::timestamp;

