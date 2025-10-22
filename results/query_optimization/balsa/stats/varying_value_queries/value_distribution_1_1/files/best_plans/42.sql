/*+ MergeJoin(b u v p)
 MergeJoin(u v p)
 MergeJoin(v p)
 IndexScan(b)
 SeqScan(u)
 SeqScan(v)
 IndexScan(p)
 Leading((b (u (v p)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>64 AND p.Score<82 AND p.CommentCount>5 AND p.CommentCount<40 AND u.DownVotes>337 AND u.DownVotes<1759 AND v.CreationDate>'2010-06-02 03:03:07'::timestamp AND v.CreationDate<'2014-04-01 10:30:54'::timestamp AND v.VoteTypeId>2 AND v.VoteTypeId<14 AND b.Date>'2011-05-18 12:46:34'::timestamp AND b.Date<'2014-05-15 22:12:23'::timestamp;

