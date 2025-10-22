/*+ MergeJoin(b u p v)
 MergeJoin(u p v)
 MergeJoin(p v)
 IndexScan(b)
 IndexScan(u)
 IndexScan(p)
 SeqScan(v)
 Leading((b (u (p v)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>8 AND p.Score<60 AND p.CommentCount>6 AND p.CommentCount<32 AND u.DownVotes>41 AND u.DownVotes<1899 AND v.CreationDate>'2009-04-09 19:40:28'::timestamp AND v.CreationDate<'2011-05-16 18:29:48'::timestamp AND v.VoteTypeId>10 AND v.VoteTypeId<15 AND b.Date>'2011-04-20 08:08:06'::timestamp AND b.Date<'2012-07-18 13:14:20'::timestamp;

