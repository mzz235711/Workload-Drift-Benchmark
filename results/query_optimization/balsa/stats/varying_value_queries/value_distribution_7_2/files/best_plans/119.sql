/*+ MergeJoin(b u v p)
 MergeJoin(u v p)
 MergeJoin(v p)
 IndexScan(b)
 IndexScan(u)
 SeqScan(v)
 IndexScan(p)
 Leading((b (u (v p)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>47 AND p.Score<153 AND p.CommentCount>0 AND p.CommentCount<18 AND u.DownVotes>463 AND u.DownVotes<1352 AND v.CreationDate>'2009-12-29 08:27:30'::timestamp AND v.CreationDate<'2013-04-11 13:11:55'::timestamp AND v.VoteTypeId>4 AND v.VoteTypeId<11 AND b.Date>'2012-11-25 21:31:30'::timestamp AND b.Date<'2013-08-14 07:18:44'::timestamp;

