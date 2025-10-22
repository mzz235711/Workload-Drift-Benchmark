/*+ NestLoop(v u p b)
 HashJoin(v u p)
 NestLoop(u p)
 SeqScan(v)
 IndexScan(u)
 IndexScan(p)
 IndexScan(b)
 Leading(((v (u p)) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>29 AND p.Score<178 AND p.CommentCount>13 AND p.CommentCount<42 AND u.DownVotes>735 AND u.DownVotes<1193 AND v.CreationDate>'2010-01-15 11:54:14'::timestamp AND v.CreationDate<'2014-05-17 19:46:34'::timestamp AND v.VoteTypeId>4 AND v.VoteTypeId<12 AND b.Date>'2011-03-16 16:09:47'::timestamp AND b.Date<'2013-12-03 11:18:07'::timestamp;

