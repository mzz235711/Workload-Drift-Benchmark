/*+ MergeJoin(b u v p)
 MergeJoin(u v p)
 MergeJoin(v p)
 IndexScan(b)
 SeqScan(u)
 SeqScan(v)
 SeqScan(p)
 Leading((b (u (v p)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-16 AND p.Score<21 AND p.CommentCount>15 AND p.CommentCount<39 AND u.DownVotes>394 AND u.DownVotes<1546 AND v.CreationDate>'2011-04-19 10:19:23'::timestamp AND v.CreationDate<'2013-12-15 23:14:15'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<9 AND b.Date>'2013-10-31 02:08:49'::timestamp AND b.Date<'2014-08-29 17:28:49'::timestamp;

