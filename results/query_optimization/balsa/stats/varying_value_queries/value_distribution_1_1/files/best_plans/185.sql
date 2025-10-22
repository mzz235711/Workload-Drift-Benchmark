/*+ MergeJoin(b u v p)
 MergeJoin(u v p)
 MergeJoin(v p)
 IndexScan(b)
 SeqScan(u)
 SeqScan(v)
 IndexScan(p)
 Leading((b (u (v p)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>8 AND p.Score<187 AND p.CommentCount>18 AND p.CommentCount<40 AND u.DownVotes>348 AND u.DownVotes<1838 AND v.CreationDate>'2009-12-28 21:26:56'::timestamp AND v.CreationDate<'2013-02-28 13:58:09'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<5 AND b.Date>'2010-08-30 14:46:33'::timestamp AND b.Date<'2014-04-27 12:05:02'::timestamp;

