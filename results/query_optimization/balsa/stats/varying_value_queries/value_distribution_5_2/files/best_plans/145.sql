/*+ HashJoin(v b u p)
 HashJoin(b u p)
 NestLoop(u p)
 SeqScan(v)
 SeqScan(b)
 SeqScan(u)
 IndexScan(p)
 Leading((v (b (u p)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-2 AND p.Score<103 AND p.CommentCount>1 AND p.CommentCount<17 AND u.DownVotes>606 AND u.DownVotes<1528 AND v.CreationDate>'2011-05-02 15:33:09'::timestamp AND v.CreationDate<'2012-12-20 12:34:33'::timestamp AND v.VoteTypeId>5 AND v.VoteTypeId<13 AND b.Date>'2010-10-07 11:33:44'::timestamp AND b.Date<'2010-10-26 12:24:16'::timestamp;

