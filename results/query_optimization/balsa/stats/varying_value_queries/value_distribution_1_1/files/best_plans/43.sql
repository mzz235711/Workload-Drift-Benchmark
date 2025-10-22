/*+ MergeJoin(b v u p)
 MergeJoin(v u p)
 MergeJoin(u p)
 IndexScan(b)
 SeqScan(v)
 IndexScan(u)
 IndexScan(p)
 Leading((b (v (u p)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>26 AND p.Score<119 AND p.CommentCount>1 AND p.CommentCount<7 AND u.DownVotes>242 AND u.DownVotes<1029 AND v.CreationDate>'2009-02-16 00:29:57'::timestamp AND v.CreationDate<'2012-06-09 12:28:46'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<10 AND b.Date>'2012-03-12 19:56:23'::timestamp AND b.Date<'2013-07-13 14:56:17'::timestamp;

