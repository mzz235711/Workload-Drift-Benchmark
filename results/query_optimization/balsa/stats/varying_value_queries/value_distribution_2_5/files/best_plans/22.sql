/*+ NestLoop(v p u b)
 NestLoop(v p u)
 NestLoop(v p)
 SeqScan(v)
 IndexScan(p)
 IndexScan(u)
 IndexScan(b)
 Leading((((v p) u) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-1 AND p.Score<139 AND p.CommentCount>7 AND p.CommentCount<38 AND u.DownVotes>280 AND u.DownVotes<1252 AND v.CreationDate>'2011-07-04 13:18:44'::timestamp AND v.CreationDate<'2014-02-03 10:07:49'::timestamp AND v.VoteTypeId>8 AND v.VoteTypeId<13 AND b.Date>'2013-08-26 11:05:02'::timestamp AND b.Date<'2014-04-19 10:52:24'::timestamp;

