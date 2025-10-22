/*+ NestLoop(u p v b)
 NestLoop(u p v)
 NestLoop(u p)
 SeqScan(u)
 IndexScan(p)
 IndexScan(v)
 IndexScan(b)
 Leading((((u p) v) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>18 AND p.Score<113 AND p.CommentCount>4 AND p.CommentCount<12 AND u.DownVotes>183 AND u.DownVotes<1178 AND v.CreationDate>'2009-04-09 06:11:22'::timestamp AND v.CreationDate<'2012-12-28 16:39:47'::timestamp AND v.VoteTypeId>7 AND v.VoteTypeId<15 AND b.Date>'2011-03-03 02:50:49'::timestamp AND b.Date<'2013-02-03 14:22:07'::timestamp;

