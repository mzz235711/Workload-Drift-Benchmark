/*+ NestLoop(v p u b)
 NestLoop(v p u)
 NestLoop(v p)
 SeqScan(v)
 IndexScan(p)
 IndexScan(u)
 IndexScan(b)
 Leading((((v p) u) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>1 AND p.Score<100 AND p.CommentCount>20 AND p.CommentCount<44 AND u.DownVotes>48 AND u.DownVotes<1528 AND v.CreationDate>'2012-12-21 17:42:15'::timestamp AND v.CreationDate<'2013-11-03 18:36:52'::timestamp AND v.VoteTypeId>7 AND v.VoteTypeId<13 AND b.Date>'2012-10-07 17:40:37'::timestamp AND b.Date<'2014-04-18 08:53:04'::timestamp;

