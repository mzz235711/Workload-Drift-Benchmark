/*+ NestLoop(v p u b)
 NestLoop(v p u)
 NestLoop(v p)
 SeqScan(v)
 IndexScan(p)
 IndexScan(u)
 IndexScan(b)
 Leading((((v p) u) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-2 AND p.Score<11 AND p.CommentCount>5 AND p.CommentCount<41 AND u.DownVotes>4 AND u.DownVotes<337 AND v.CreationDate>'2009-07-03 20:51:39'::timestamp AND v.CreationDate<'2013-10-14 18:29:48'::timestamp AND v.VoteTypeId>7 AND v.VoteTypeId<9 AND b.Date>'2011-02-17 05:19:18'::timestamp AND b.Date<'2013-10-16 11:14:18'::timestamp;

