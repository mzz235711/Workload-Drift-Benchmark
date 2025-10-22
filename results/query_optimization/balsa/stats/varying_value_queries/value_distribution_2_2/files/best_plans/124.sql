/*+ NestLoop(u p v b)
 NestLoop(u p v)
 NestLoop(u p)
 SeqScan(u)
 IndexScan(p)
 IndexScan(v)
 IndexScan(b)
 Leading((((u p) v) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>112 AND p.Score<172 AND p.CommentCount>0 AND p.CommentCount<30 AND u.DownVotes>311 AND u.DownVotes<1019 AND v.CreationDate>'2009-09-04 12:11:53'::timestamp AND v.CreationDate<'2012-10-07 10:53:49'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<7 AND b.Date>'2011-01-16 20:55:24'::timestamp AND b.Date<'2013-09-30 10:36:49'::timestamp;

