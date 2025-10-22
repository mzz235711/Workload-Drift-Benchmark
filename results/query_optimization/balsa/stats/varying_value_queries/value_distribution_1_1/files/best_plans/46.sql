/*+ MergeJoin(b v p u)
 MergeJoin(v p u)
 MergeJoin(p u)
 IndexScan(b)
 SeqScan(v)
 IndexScan(p)
 SeqScan(u)
 Leading((b (v (p u)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-5 AND p.Score<40 AND p.CommentCount>17 AND p.CommentCount<36 AND u.DownVotes>716 AND u.DownVotes<1231 AND v.CreationDate>'2011-04-10 00:42:52'::timestamp AND v.CreationDate<'2014-01-31 21:39:08'::timestamp AND v.VoteTypeId>2 AND v.VoteTypeId<15 AND b.Date>'2013-07-28 14:35:59'::timestamp AND b.Date<'2013-11-20 13:54:34'::timestamp;

