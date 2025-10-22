/*+ MergeJoin(b u p v)
 MergeJoin(u p v)
 MergeJoin(p v)
 IndexScan(b)
 IndexScan(u)
 IndexScan(p)
 SeqScan(v)
 Leading((b (u (p v)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>12 AND p.Score<129 AND p.CommentCount>1 AND p.CommentCount<40 AND u.DownVotes>147 AND u.DownVotes<375 AND v.CreationDate>'2010-08-08 00:40:50'::timestamp AND v.CreationDate<'2012-07-04 14:17:38'::timestamp AND v.VoteTypeId>6 AND v.VoteTypeId<13 AND b.Date>'2012-02-03 01:52:10'::timestamp AND b.Date<'2012-02-15 19:48:30'::timestamp;

