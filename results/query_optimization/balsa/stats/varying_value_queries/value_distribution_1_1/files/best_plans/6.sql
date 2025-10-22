/*+ MergeJoin(b u v p)
 MergeJoin(u v p)
 MergeJoin(v p)
 IndexScan(b)
 IndexScan(u)
 SeqScan(v)
 IndexScan(p)
 Leading((b (u (v p)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>5 AND p.Score<90 AND p.CommentCount>17 AND p.CommentCount<23 AND u.DownVotes>55 AND u.DownVotes<1456 AND v.CreationDate>'2011-10-25 18:18:08'::timestamp AND v.CreationDate<'2012-02-28 19:23:57'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<8 AND b.Date>'2011-05-14 01:31:12'::timestamp AND b.Date<'2011-10-07 02:06:37'::timestamp;

