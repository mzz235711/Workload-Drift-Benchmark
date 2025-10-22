/*+ NestLoop(v p u b)
 NestLoop(v p u)
 NestLoop(v p)
 SeqScan(v)
 IndexScan(p)
 IndexScan(u)
 IndexScan(b)
 Leading((((v p) u) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>112 AND p.Score<161 AND p.CommentCount>8 AND p.CommentCount<23 AND u.DownVotes>80 AND u.DownVotes<1365 AND v.CreationDate>'2010-05-03 00:48:48'::timestamp AND v.CreationDate<'2014-01-14 18:47:55'::timestamp AND v.VoteTypeId>6 AND v.VoteTypeId<10 AND b.Date>'2013-08-17 13:02:25'::timestamp AND b.Date<'2014-04-14 07:04:38'::timestamp;

