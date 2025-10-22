/*+ MergeJoin(b u v p)
 MergeJoin(u v p)
 MergeJoin(v p)
 IndexScan(b)
 IndexScan(u)
 SeqScan(v)
 IndexScan(p)
 Leading((b (u (v p)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>23 AND p.Score<58 AND p.CommentCount>12 AND p.CommentCount<19 AND u.DownVotes>303 AND u.DownVotes<1303 AND v.CreationDate>'2009-08-10 13:40:45'::timestamp AND v.CreationDate<'2012-06-27 00:50:45'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<4 AND b.Date>'2011-06-13 21:58:33'::timestamp AND b.Date<'2013-09-19 18:09:23'::timestamp;

