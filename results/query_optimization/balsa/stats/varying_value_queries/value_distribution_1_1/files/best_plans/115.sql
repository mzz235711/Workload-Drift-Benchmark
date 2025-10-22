/*+ MergeJoin(b u v p)
 MergeJoin(u v p)
 MergeJoin(v p)
 IndexScan(b)
 IndexScan(u)
 SeqScan(v)
 IndexScan(p)
 Leading((b (u (v p)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-8 AND p.Score<134 AND p.CommentCount>6 AND p.CommentCount<10 AND u.DownVotes>670 AND u.DownVotes<1708 AND v.CreationDate>'2011-08-07 08:30:22'::timestamp AND v.CreationDate<'2011-12-31 10:03:31'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<8 AND b.Date>'2010-07-20 06:08:03'::timestamp AND b.Date<'2013-02-17 04:31:36'::timestamp;

