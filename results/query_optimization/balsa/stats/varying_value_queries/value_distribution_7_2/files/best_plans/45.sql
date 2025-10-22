/*+ NestLoop(v p u b)
 NestLoop(v p u)
 NestLoop(v p)
 SeqScan(v)
 IndexScan(p)
 IndexScan(u)
 IndexScan(b)
 Leading((((v p) u) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-9 AND p.Score<24 AND p.CommentCount>12 AND p.CommentCount<36 AND u.DownVotes>624 AND u.DownVotes<1853 AND v.CreationDate>'2009-05-13 09:13:35'::timestamp AND v.CreationDate<'2014-07-08 13:52:39'::timestamp AND v.VoteTypeId>6 AND v.VoteTypeId<10 AND b.Date>'2013-09-09 20:45:02'::timestamp AND b.Date<'2014-03-07 13:22:04'::timestamp;

