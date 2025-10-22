/*+ NestLoop(u p v b)
 NestLoop(u p v)
 NestLoop(u p)
 SeqScan(u)
 IndexScan(p)
 IndexScan(v)
 IndexScan(b)
 Leading((((u p) v) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-18 AND p.Score<22 AND p.CommentCount>13 AND p.CommentCount<43 AND u.DownVotes>453 AND u.DownVotes<1547 AND v.CreationDate>'2010-07-26 18:33:52'::timestamp AND v.CreationDate<'2011-12-19 05:07:53'::timestamp AND v.VoteTypeId>7 AND v.VoteTypeId<11 AND b.Date>'2013-04-09 16:04:35'::timestamp AND b.Date<'2014-01-28 17:53:23'::timestamp;

