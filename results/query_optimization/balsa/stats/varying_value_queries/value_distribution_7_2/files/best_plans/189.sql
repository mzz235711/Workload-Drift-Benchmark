/*+ NestLoop(v p u b)
 NestLoop(v p u)
 NestLoop(v p)
 SeqScan(v)
 IndexScan(p)
 IndexScan(u)
 IndexScan(b)
 Leading((((v p) u) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>56 AND p.Score<166 AND p.CommentCount>5 AND p.CommentCount<42 AND u.DownVotes>538 AND u.DownVotes<1528 AND v.CreationDate>'2010-10-31 22:19:35'::timestamp AND v.CreationDate<'2012-06-10 09:21:05'::timestamp AND v.VoteTypeId>2 AND v.VoteTypeId<13 AND b.Date>'2013-03-17 04:16:26'::timestamp AND b.Date<'2014-04-28 11:21:02'::timestamp;

