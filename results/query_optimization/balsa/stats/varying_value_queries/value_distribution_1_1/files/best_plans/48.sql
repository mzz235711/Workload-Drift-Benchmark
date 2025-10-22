/*+ MergeJoin(b u v p)
 MergeJoin(u v p)
 MergeJoin(v p)
 IndexScan(b)
 SeqScan(u)
 SeqScan(v)
 IndexScan(p)
 Leading((b (u (v p)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>22 AND p.Score<170 AND p.CommentCount>6 AND p.CommentCount<10 AND u.DownVotes>247 AND u.DownVotes<1017 AND v.CreationDate>'2010-01-25 21:58:56'::timestamp AND v.CreationDate<'2012-09-21 16:24:24'::timestamp AND v.VoteTypeId>2 AND v.VoteTypeId<10 AND b.Date>'2011-05-01 10:33:41'::timestamp AND b.Date<'2013-09-19 05:46:59'::timestamp;

