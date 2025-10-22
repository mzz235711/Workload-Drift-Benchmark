/*+ MergeJoin(b u v p)
 MergeJoin(u v p)
 MergeJoin(v p)
 IndexScan(b)
 IndexScan(u)
 SeqScan(v)
 IndexScan(p)
 Leading((b (u (v p)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-1 AND p.Score<172 AND p.CommentCount>6 AND p.CommentCount<31 AND u.DownVotes>709 AND u.DownVotes<820 AND v.CreationDate>'2011-01-15 06:08:10'::timestamp AND v.CreationDate<'2012-03-18 13:31:19'::timestamp AND v.VoteTypeId>4 AND v.VoteTypeId<6 AND b.Date>'2010-10-23 22:01:04'::timestamp AND b.Date<'2012-11-18 01:28:49'::timestamp;

