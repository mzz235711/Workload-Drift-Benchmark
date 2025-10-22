/*+ MergeJoin(u v p b)
 MergeJoin(u v p)
 MergeJoin(v p)
 SeqScan(u)
 SeqScan(v)
 IndexScan(p)
 SeqScan(b)
 Leading(((u (v p)) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>7 AND p.Score<100 AND p.CommentCount>2 AND p.CommentCount<35 AND u.DownVotes>146 AND u.DownVotes<1058 AND v.CreationDate>'2009-12-22 03:58:43'::timestamp AND v.CreationDate<'2012-12-11 19:11:28'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<5 AND b.Date>'2011-12-10 15:41:07'::timestamp AND b.Date<'2012-05-19 05:48:49'::timestamp;

