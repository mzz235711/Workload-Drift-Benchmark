/*+ NestLoop(v p u b)
 NestLoop(v p u)
 NestLoop(v p)
 SeqScan(v)
 IndexScan(p)
 IndexScan(u)
 IndexScan(b)
 Leading((((v p) u) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-11 AND p.Score<170 AND p.CommentCount>15 AND p.CommentCount<37 AND u.DownVotes>617 AND u.DownVotes<1587 AND v.CreationDate>'2010-02-05 17:48:00'::timestamp AND v.CreationDate<'2014-01-14 11:02:04'::timestamp AND v.VoteTypeId>6 AND v.VoteTypeId<15 AND b.Date>'2011-11-10 12:05:18'::timestamp AND b.Date<'2013-01-14 13:17:12'::timestamp;

