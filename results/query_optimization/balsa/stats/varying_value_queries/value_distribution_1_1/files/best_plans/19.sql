/*+ MergeJoin(b u v p)
 MergeJoin(u v p)
 MergeJoin(v p)
 IndexScan(b)
 SeqScan(u)
 SeqScan(v)
 IndexScan(p)
 Leading((b (u (v p)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>43 AND p.Score<78 AND p.CommentCount>6 AND p.CommentCount<34 AND u.DownVotes>289 AND u.DownVotes<1603 AND v.CreationDate>'2012-06-28 07:25:44'::timestamp AND v.CreationDate<'2013-10-10 06:59:52'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<4 AND b.Date>'2012-07-20 18:30:28'::timestamp AND b.Date<'2014-01-05 17:15:18'::timestamp;

