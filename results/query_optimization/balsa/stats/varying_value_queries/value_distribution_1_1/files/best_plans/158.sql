/*+ MergeJoin(v u p b)
 MergeJoin(v u p)
 MergeJoin(u p)
 SeqScan(v)
 IndexScan(u)
 IndexScan(p)
 IndexScan(b)
 Leading(((v (u p)) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-10 AND p.Score<136 AND p.CommentCount>1 AND p.CommentCount<44 AND u.DownVotes>507 AND u.DownVotes<1863 AND v.CreationDate>'2013-09-14 05:43:57'::timestamp AND v.CreationDate<'2014-06-22 17:42:07'::timestamp AND v.VoteTypeId>4 AND v.VoteTypeId<9 AND b.Date>'2010-09-28 07:10:16'::timestamp AND b.Date<'2014-08-20 04:49:42'::timestamp;

