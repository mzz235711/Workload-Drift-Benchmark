/*+ MergeJoin(b u v p)
 MergeJoin(u v p)
 MergeJoin(v p)
 IndexScan(b)
 IndexScan(u)
 SeqScan(v)
 IndexScan(p)
 Leading((b (u (v p)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>39 AND p.Score<55 AND p.CommentCount>14 AND p.CommentCount<26 AND u.DownVotes>28 AND u.DownVotes<914 AND v.CreationDate>'2011-02-19 17:37:52'::timestamp AND v.CreationDate<'2012-05-16 19:27:43'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<9 AND b.Date>'2014-05-10 04:43:34'::timestamp AND b.Date<'2014-07-10 08:00:50'::timestamp;

