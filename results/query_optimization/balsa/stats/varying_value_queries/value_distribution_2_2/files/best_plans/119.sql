/*+ NestLoop(u p v b)
 NestLoop(u p v)
 NestLoop(u p)
 SeqScan(u)
 IndexScan(p)
 IndexScan(v)
 IndexScan(b)
 Leading((((u p) v) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-10 AND p.Score<44 AND p.CommentCount>2 AND p.CommentCount<37 AND u.DownVotes>537 AND u.DownVotes<1899 AND v.CreationDate>'2009-11-09 21:00:52'::timestamp AND v.CreationDate<'2012-04-03 12:19:54'::timestamp AND v.VoteTypeId>4 AND v.VoteTypeId<14 AND b.Date>'2010-09-19 16:59:36'::timestamp AND b.Date<'2012-08-29 13:22:38'::timestamp;

