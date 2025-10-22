/*+ MergeJoin(b u v p)
 MergeJoin(u v p)
 MergeJoin(v p)
 IndexScan(b)
 IndexScan(u)
 SeqScan(v)
 IndexScan(p)
 Leading((b (u (v p)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>10 AND p.Score<53 AND p.CommentCount>11 AND p.CommentCount<42 AND u.DownVotes>698 AND u.DownVotes<1444 AND v.CreationDate>'2010-10-16 19:12:06'::timestamp AND v.CreationDate<'2011-10-17 02:27:06'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<15 AND b.Date>'2012-01-31 22:45:35'::timestamp AND b.Date<'2014-01-20 19:13:20'::timestamp;

