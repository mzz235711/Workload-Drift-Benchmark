/*+ MergeJoin(b u v p)
 MergeJoin(u v p)
 MergeJoin(v p)
 SeqScan(b)
 IndexScan(u)
 SeqScan(v)
 IndexScan(p)
 Leading((b (u (v p)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-6 AND p.Score<175 AND p.CommentCount>4 AND p.CommentCount<18 AND u.DownVotes>111 AND u.DownVotes<1219 AND v.CreationDate>'2011-10-04 00:59:27'::timestamp AND v.CreationDate<'2012-10-06 05:51:49'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<15 AND b.Date>'2010-08-02 02:37:47'::timestamp AND b.Date<'2011-08-11 10:08:28'::timestamp;

