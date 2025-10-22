/*+ MergeJoin(b u p v)
 HashJoin(u p v)
 MergeJoin(p v)
 IndexScan(b)
 IndexScan(u)
 SeqScan(p)
 SeqScan(v)
 Leading((b (u (p v)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-8 AND p.Score<145 AND p.CommentCount>2 AND p.CommentCount<8 AND u.DownVotes>3 AND u.DownVotes<1386 AND v.CreationDate>'2010-06-05 18:30:24'::timestamp AND v.CreationDate<'2012-12-27 11:05:10'::timestamp AND v.VoteTypeId>4 AND v.VoteTypeId<15 AND b.Date>'2012-03-13 05:41:52'::timestamp AND b.Date<'2013-11-10 04:28:22'::timestamp;

