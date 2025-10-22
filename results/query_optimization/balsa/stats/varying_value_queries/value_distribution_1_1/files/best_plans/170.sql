/*+ MergeJoin(b u v p)
 MergeJoin(u v p)
 MergeJoin(v p)
 IndexScan(b)
 IndexScan(u)
 SeqScan(v)
 IndexScan(p)
 Leading((b (u (v p)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>14 AND p.Score<130 AND p.CommentCount>7 AND p.CommentCount<36 AND u.DownVotes>46 AND u.DownVotes<105 AND v.CreationDate>'2011-02-23 08:37:40'::timestamp AND v.CreationDate<'2012-04-02 00:41:15'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<9 AND b.Date>'2011-03-28 11:36:33'::timestamp AND b.Date<'2013-04-22 05:38:01'::timestamp;

