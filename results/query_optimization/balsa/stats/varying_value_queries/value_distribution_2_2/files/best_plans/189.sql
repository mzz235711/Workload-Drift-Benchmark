/*+ NestLoop(u p v b)
 NestLoop(u p v)
 NestLoop(u p)
 SeqScan(u)
 IndexScan(p)
 IndexScan(v)
 IndexScan(b)
 Leading((((u p) v) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>67 AND p.Score<128 AND p.CommentCount>7 AND p.CommentCount<36 AND u.DownVotes>33 AND u.DownVotes<736 AND v.CreationDate>'2011-01-19 23:16:56'::timestamp AND v.CreationDate<'2012-05-08 15:45:49'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<6 AND b.Date>'2010-12-20 16:38:55'::timestamp AND b.Date<'2013-03-15 23:07:24'::timestamp;

