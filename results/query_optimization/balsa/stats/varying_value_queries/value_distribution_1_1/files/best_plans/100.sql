/*+ MergeJoin(b u v p)
 MergeJoin(u v p)
 MergeJoin(v p)
 IndexScan(b)
 SeqScan(u)
 SeqScan(v)
 IndexScan(p)
 Leading((b (u (v p)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>41 AND p.Score<100 AND p.CommentCount>0 AND p.CommentCount<18 AND u.DownVotes>304 AND u.DownVotes<1656 AND v.CreationDate>'2010-10-13 20:19:12'::timestamp AND v.CreationDate<'2011-01-21 03:16:19'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<7 AND b.Date>'2011-02-18 16:32:09'::timestamp AND b.Date<'2011-11-05 10:29:42'::timestamp;

