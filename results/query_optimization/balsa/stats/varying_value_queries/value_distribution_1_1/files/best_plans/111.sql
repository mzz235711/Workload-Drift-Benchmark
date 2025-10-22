/*+ MergeJoin(v u p b)
 MergeJoin(v u p)
 MergeJoin(u p)
 SeqScan(v)
 IndexScan(u)
 IndexScan(p)
 IndexScan(b)
 Leading(((v (u p)) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>10 AND p.Score<187 AND p.CommentCount>3 AND p.CommentCount<35 AND u.DownVotes>294 AND u.DownVotes<470 AND v.CreationDate>'2010-10-25 16:11:06'::timestamp AND v.CreationDate<'2014-01-30 14:36:26'::timestamp AND v.VoteTypeId>2 AND v.VoteTypeId<14 AND b.Date>'2011-05-27 15:34:16'::timestamp AND b.Date<'2014-05-08 01:54:14'::timestamp;

