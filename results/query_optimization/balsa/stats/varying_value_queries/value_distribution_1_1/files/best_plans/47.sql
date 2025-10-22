/*+ MergeJoin(b u v p)
 MergeJoin(u v p)
 MergeJoin(v p)
 IndexScan(b)
 IndexScan(u)
 SeqScan(v)
 IndexScan(p)
 Leading((b (u (v p)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>23 AND p.Score<188 AND p.CommentCount>9 AND p.CommentCount<23 AND u.DownVotes>61 AND u.DownVotes<216 AND v.CreationDate>'2010-01-13 22:20:18'::timestamp AND v.CreationDate<'2011-04-11 12:25:46'::timestamp AND v.VoteTypeId>2 AND v.VoteTypeId<13 AND b.Date>'2011-09-19 06:32:46'::timestamp AND b.Date<'2012-02-22 11:23:19'::timestamp;

