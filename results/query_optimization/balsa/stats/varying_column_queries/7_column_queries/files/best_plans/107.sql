/*+ HashJoin(b ph u p)
 HashJoin(ph u p)
 HashJoin(u p)
 SeqScan(b)
 SeqScan(ph)
 IndexScan(u)
 SeqScan(p)
 Leading((b (ph (u p)))) */
SELECT COUNT(*) FROM postHistory as ph, posts as p, users as u, badges as b WHERE u.Id = p.OwnerUserId AND p.OwnerUserId = ph.UserId AND ph.UserId = b.UserId AND ph.CreationDate<='2014-09-09 19:58:20'::timestamp AND p.PostTypeId=1 AND p.ViewCount<=25960 AND p.AnswerCount>=0 AND p.AnswerCount<=4 AND p.CreationDate>='2010-07-19 19:39:06'::timestamp AND u.Views<=37;

