/*+ NestLoop(v p u b)
 NestLoop(v p u)
 NestLoop(v p)
 SeqScan(v)
 IndexScan(p)
 IndexScan(u)
 IndexScan(b)
 Leading((((v p) u) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-8 AND p.Score<126 AND p.CommentCount>6 AND p.CommentCount<38 AND u.DownVotes>617 AND u.DownVotes<1724 AND v.CreationDate>'2013-04-27 20:39:00'::timestamp AND v.CreationDate<'2014-05-13 01:27:53'::timestamp AND v.VoteTypeId>8 AND v.VoteTypeId<11 AND b.Date>'2012-10-07 21:04:57'::timestamp AND b.Date<'2013-12-12 10:57:10'::timestamp;

